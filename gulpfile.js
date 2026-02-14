const { watch, series } = require(`gulp`);

let command = `build-deck.sh`;

function build () {
    let exec = require(`child_process`).exec;

    return exec(command, function (error, stdout, stderr) {
        if (null !== error) {
            process.stdout.write(`An error was likely generated when invoking ` +
                `the “exec” program in the build task.`);
        }

        if (`` !== stderr) {
            process.stdout.write(`Content has been written to the stderr stream ` +
                `when invoking the “exec” program in the build task.`);
        }
    });
}

let serve = () => {
    watch(`./topics/*`, series(build));
};

exports.default = series(build, serve);

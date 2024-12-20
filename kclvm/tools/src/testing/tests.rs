use kclvm_ast::ast::Argument;
use kclvm_runner::ExecProgramArgs;

use crate::testing::TestRun;

use super::{load_test_suites, TestOptions};
use std::path::Path;

#[test]
fn test_load_test_suites_and_run() {
    let opts = TestOptions {
        exec_args: ExecProgramArgs {
            args: vec![Argument {
                name: "a".to_string(),
                value: "\"a\"".to_string(),
            }],
            ..Default::default()
        },
        ..Default::default()
    };
    let suites = load_test_suites(
        Path::new(".")
            .join("src")
            .join("testing")
            .join("test_data")
            .join("module")
            .join("pkg")
            .to_str()
            .unwrap(),
        &opts,
    )
    .unwrap();
    assert_eq!(suites.len(), 1);
    assert_eq!(suites[0].cases.len(), 1);
    let test_result = suites[0].run(&opts).unwrap();
    assert_eq!(test_result.info.len(), 1);
    assert!(test_result.info[0].error.is_none());
}

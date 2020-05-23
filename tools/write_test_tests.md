# write_test_tests.py
A helper file with multiple functions used to grade student test submissions

## Function 1: Writing a single test result to a json file

Required arguments:
- `--xmldir` - Directory for surefire reports. Ex: target/surefire-reports
- `--label` - A label to identify the solution the tests were run with
- `--output` - An output file to write test results to (pass/fail). If the file exists, the test results will be added. If not, it will be created.

This reads all the xml files generated by running the test code with a given solution set. It calculates the total passed/failed tests and writes `"<label>":true` as long as the student has more than 0 tests, and there are no failiures. This should be run after each solution is tested.


Example output file:
```json
{
    "test1": true,
    "test2": true,
    "test3": false
}
```


## Function 2: Compare student test results to reference solution

Required arguments:
- `--reference` - Json file of reference results
- `--student` - Json file of student results
- `--output` - Output json for Gradescope results
- `--max_points` - Max points if student results match all reference tests. Partial credit is given if all are not equal.

This function should be run once, after all of the solution sets have been tested and the student results file (generated in step 1) is full of tests. The following output json will be produced:

```json
{
    "tests": [
        {
            "name": "Run student test suite against multiple mutant codebases",
            "max_score": 12.0,
            "score": 8.0,
            "output": "Correctly identified 2 of 3 test cases"
        }
    ]
}
```
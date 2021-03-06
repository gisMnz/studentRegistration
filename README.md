![ ](External/Toolsqa1.png)

<h4>
 <a href="https://demoqa.com/automation-practice-form"> Form tested - Tools QA</a>
</h4>

---

# Robot Framework Exercise

## Automation of testing a web form (Tools QA) using Robot Framework libraries

---

## Summary

- [Run](#run)
  - [Test Cases](#test-cases)
  - [Run the test cases](#run-the-test-cases)
- [Results](#results)
- [Project Requirements](#project-requirements)
  - [Libraries](#libraries)
- [Resources](#resources)
- [Requirements analysis and design](#requirements-analysis-and-design)

---

## Run

### Test Cases

- registration_form.robot

### Run the test cases

To run a test suite you need to be in the main folder "registration_form" and call the robot file from here.
And define the "Results" folder as the output dir.

```
robot --outputdir Results Tests\registration_form.robot
```

or

```
robot -d ./Results Tests\registration_form.robot
```

or

```
robot -d ./Results -N "QAEX Tests" Tests
```

or
[Batch](#run.bat)

To run a single test case, just inform the Test case name in -t argument:

```
robot -d ./Results -N "Mandatory fields only" -t "QAEX-TA-003 - Registration - Mandatory fields only" Tests
```

---

### Results:

registration_form/Results

---

### Project Requirements

- [Python 3](https://www.python.org/downloads/)
- Install Python dependencies

```shell
python -m pip install -r robotframework-seleniumlibrary
python -m pip install -r robotframework-browse
python -m pip install -r robotframework-screencaplibrary
```

## 📖Libraries

- [SeleniumLibrary](https://github.com/robotframework/SeleniumLibrary)
- [BrowserLibrary](https://github.com/MarketSquare/robotframework-browser)
- [ScreenCapLibrary](https://github.com/mihaiparvu/ScreenCapLibrary)

---

### Resources

- resource: keywords
- utils: keywords low level created in python
- variables: variables

---

### Requirements analysis and design:

Auxiliar/Requirements analysis and design.pptx

---

## By 🤍 Gislaine Menezes

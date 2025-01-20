# Objective-C ARC Memory Management Issue: Premature Deallocation
This repository demonstrates a common error in Objective-C related to Automatic Reference Counting (ARC) and object ownership. The `bug.m` file showcases a scenario where a method returns an object that gets deallocated prematurely because the calling method doesn't retain it. The `bugSolution.m` file presents the corrected version, ensuring proper object retention and preventing premature deallocation.

## Setup:

1. Clone the repository.
2. Open the project in Xcode.
3. Run the code to observe the issue and its solution.
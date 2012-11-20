path-normalization
==================

To run this program, simply open a terminal and type ruby normalizePath.rb. From there, you can feed in paths to standard input
and the resulting normalized path will be printed to standard output. Press CTRL+C at any time during the program to stop execution.

== BEGIN PROBLEM ==

Please write a method to normalize a string which represents a file path. For the purposes of this question, normalizing means:
* all single dot components of the path must be removed.  For example, "foo/./bar" should be normalized to "foo/bar".
* all double dots components of the path must be removed, along with their parent directory, if any.  For example, "foo/bar/../baz" should be normalized to "foo/baz".

That's it.  Normally, a path normalization algorithm would do a lot of other stuff, but for this question, don't do any other kind of normalization or transformation of the path.  As an example, "foo//bar" should be normalized to "foo//bar" (i.e. a no-op).

We suggest that you write the code in Ruby, but you can use any programming language. Please write code that you feel proud of and would check in to source control and push into production use in a professional environment. You program should read paths from standard input and write normalized paths on a standard output.

Please send us a GitHub link for the solution, and make sure that project has a README file with instructions on how to run your code.

== END PROBLEM ==

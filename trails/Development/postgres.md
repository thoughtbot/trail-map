Postgres
========

Critical learning
-----------------

Read these sections of the [Postgres manual](http://www.postgresql.org/docs/9.0/static/index.html):

* 2.5\. [Querying a Table](http://www.postgresql.org/docs/9.0/static/tutorial-select.html)
* 2.6\. [Joins Between Tables](http://www.postgresql.org/docs/9.0/static/tutorial-join.html)
* 2.7\. [Aggregate Functions](http://www.postgresql.org/docs/9.0/static/tutorial-agg.html)
* 3.5\. [Window Functions](http://www.postgresql.org/docs/9.0/static/tutorial-window.html)
* 4\. [SQL Syntax](http://www.postgresql.org/docs/9.0/static/sql-syntax.html)
  - 4.1\. [Lexical Structure](http://www.postgresql.org/docs/9.0/static/sql-syntax-lexical.html)
  - 4.2\. [Value Expressions](http://www.postgresql.org/docs/9.0/static/sql-expressions.html)
* 5\. [Data Definition](http://www.postgresql.org/docs/9.0/static/ddl.html)
  - 5.1\. [Table Basics](http://www.postgresql.org/docs/9.0/static/ddl-basics.html)
  - 5.2\. [Default Values](http://www.postgresql.org/docs/9.0/static/ddl-default.html)
  - 5.3\. [Constraints](http://www.postgresql.org/docs/9.0/static/ddl-constraints.html)
  - 5.5\. [Modifying Tables](http://www.postgresql.org/docs/9.0/static/ddl-alter.html)
* 6\. [Data Manipulation](http://www.postgresql.org/docs/9.0/static/dml.html)
  * 6.1\. [Inserting Data](http://www.postgresql.org/docs/9.0/static/dml-insert.html)
  * 6.2\. [Updating Data](http://www.postgresql.org/docs/9.0/static/dml-update.html)
  * 6.3\. [Deleting Data](http://www.postgresql.org/docs/9.0/static/dml-delete.html)
* 7\. [Queries](http://www.postgresql.org/docs/9.0/static/queries.html)
  * 7.1\. [Overview](http://www.postgresql.org/docs/9.0/static/queries-overview.html)
  * 7.2\. [Table Expressions](http://www.postgresql.org/docs/9.0/static/queries-table-expressions.html)
  * 7.3\. [Select Lists](http://www.postgresql.org/docs/9.0/static/queries-select-lists.html)
  * 7.4\. [Combining Queries](http://www.postgresql.org/docs/9.0/static/queries-union.html)
  * 7.5\. [Sorting Rows](http://www.postgresql.org/docs/9.0/static/queries-order.html)
  * 7.6\. [LIMIT and OFFSET](http://www.postgresql.org/docs/9.0/static/queries-limit.html)
  * 7.7\. [VALUES Lists](http://www.postgresql.org/docs/9.0/static/queries-values.html)
  * 7.8\. [WITH Queries (Common Table Expressions)](http://www.postgresql.org/docs/9.0/static/queries-with.html)
* 9\. [Functions and Operators](http://www.postgresql.org/docs/9.0/static/functions.html)
  * 9.1\. [Logical Operators](http://www.postgresql.org/docs/9.0/static/functions-logical.html)
  * 9.2\. [Comparison Operators](http://www.postgresql.org/docs/9.0/static/functions-comparison.html)
  * 9.7.1\. [LIKE](http://www.postgresql.org/docs/9.0/static/functions-matching.html#FUNCTIONS-LIKE)
  * 9.20\.[Subquery Expressions](http://www.postgresql.org/docs/9.0/static/functions-subquery.html)
* 11\. [Indexes](http://www.postgresql.org/docs/9.0/static/indexes.html)
  * 11.1\. [Introduction](http://www.postgresql.org/docs/9.0/static/indexes-intro.html)
  * 11.5\. [Combining Multiple Indexes](http://www.postgresql.org/docs/9.0/static/indexes-bitmap-scans.html)
* I. [SQL Commands](http://www.postgresql.org/docs/9.0/static/sql-commands.html)
  * [ALTER TABLE](http://www.postgresql.org/docs/9.0/static/sql-altertable.html)
  * [CREATE INDEX [ CONCURRENTLY ]](http://www.postgresql.org/docs/9.0/static/sql-createindex.html)
  * [CREATE TABLE](http://www.postgresql.org/docs/9.0/static/sql-createtable.html)
  * [DELETE](http://www.postgresql.org/docs/9.0/static/sql-delete.html)
  * [INSERT](http://www.postgresql.org/docs/9.0/static/sql-insert.html)
  * [SELECT](http://www.postgresql.org/docs/9.0/static/sql-select.html)
  * [UPDATE](http://www.postgresql.org/docs/9.0/static/sql-update.html)

Read the following sections of the [SQL Cookbook](http://www.amazon.com/Cookbook-Cookbooks-OReilly-Anthony-Molinaro/dp/0596009763): ($)

```shell
Appendix A: Window Function Refresher
Any recipes that interest you
```

Validation
----------

You know everyday SQL when you can:

* Insert a new record.
* Update one or more records.
* Delete one or more records.
* Find rows that satisfy one or more conditions.
* Limit query results.
* Order query results.
* Average values in a column.
* Find the mininum value in a column.
* Find the maximum value in a column.
* Sum values in a column.
* Count values in a column.
* Paginate results.
* Suppress duplicates.
* Answer negation questions. ("Which students don't take course 101?")
* Answer limit questions. ("Which students take at least 2 courses?")
* Answer exact questions. ("Which professors teach only 1 course?")
* Answer relational division questions. ("Find a plane faster than all trains.")

Ongoing reference
-----------------

Refer often to the Postgres manual.

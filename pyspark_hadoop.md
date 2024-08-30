### PySpark Interview Questions

1. **What is Apache Spark, and how does PySpark fit into the Spark ecosystem?**

   **Solution:** Apache Spark is a unified analytics engine for large-scale data processing. It performs up to 100 times faster than Hadoop MapReduce for iterative algorithms. PySpark is the Python API for Spark, providing a way for Python programmers to use Spark’s scalable data processing capabilities. PySpark supports most of Spark's features such as Spark SQL, DataFrame, Streaming, MLlib (Machine Learning), and Spark Core.

2. **How does PySpark handle data immutability and fault tolerance with RDDs?**

   **Solution:** In PySpark, Resilient Distributed Datasets (RDDs) are immutable distributed collections of objects. Each dataset in RDD is divided into logical partitions, which may be computed on different nodes of the cluster. The immutability helps in achieving consistency in computations. Fault tolerance is maintained via lineage; if any partition of an RDD is lost, it can be recomputed using the lineage graph (i.e., the sequence of operations that led to it).

3. **Can you explain what DataFrame is in PySpark? How is it different from an RDD?**

   **Solution:** A DataFrame in PySpark is a distributed collection of data organized into named columns, similar to a table in a relational database. Unlike RDDs which are schema-less, DataFrames have a schema. This leads to more optimized storage and better performance because Spark knows what data type each column contains. DataFrames allow for optimizations through Catalyst optimizer, which uses features like predicate pushdown to enhance query performance.

4. **What are transformations and actions in Spark? Provide examples.**

   **Solution:** 
   - **Transformations** create a new dataset from an existing one. Examples include `map`, `filter`, `reduceByKey`, and `join`. These transformations are lazy, meaning they do not compute their results right away.
   - **Actions**, such as `count`, `first`, `take`, and `collect`, return a value to the driver program after running a computation on the dataset. Actions are eager, executing immediately to retrieve results or trigger computations.

### Hadoop Interview Questions

5. **Explain the core components of Hadoop.**

   **Solution:** Hadoop primarily consists of:
   - **Hadoop Distributed File System (HDFS)** for storing data across multiple machines.
   - **Yet Another Resource Negotiator (YARN)** for managing and scheduling resources across clusters.
   - **MapReduce** for processing large data sets with a distributed algorithm on Hadoop.

6. **How does HDFS ensure data durability?**

   **Solution:** HDFS ensures durability via replication. When data is stored in HDFS, it is split into blocks (default size is 128MB in Hadoop 2.x), and each block is replicated across multiple nodes in the cluster. This ensures that if a node goes down, data can be retrieved from other nodes that have copies of the same data block.

7. **What is the role of the NameNode and DataNode in HDFS?**

   **Solution:** 
   - **NameNode**: The master node that manages the file system namespace and controls access to files by clients. It maintains the metadata of all the files and directories in the tree.
   - **DataNode**: These are the slave nodes that store the actual data in HDFS. The NameNode directs the DataNode to perform low-level I/O tasks.

8. **Can you explain how a MapReduce job is executed in Hadoop?**

   **Solution:** In a MapReduce job:
   - The **Mapper** takes input key-value pairs and processes them to generate intermediate key-value pairs.
   - The outputs from all mappers are then shuffled and sorted by their keys to ensure that the same keys are grouped together, and then passed to the **Reducers**.
   - The **Reducer** processes each group of outputs, combining them in some way to form a smaller set of key-value pairs (or even just a single value).


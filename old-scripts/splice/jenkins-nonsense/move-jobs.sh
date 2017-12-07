#!/bin/bash

# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_40-tpch                                      test-1.5.x-cluster_02-tpch1
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_41-tpch-multiuser                            test-1.5.x-cluster_02-tpch1-multiuser
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_01-tpcc                                      test-1.5.x-cluster_03-tpcc
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_02-mvcc                                      test-1.5.x-cluster_04-mvcc
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_23-odbc                                      test-1.5.x-cluster_23-odbc
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_24-temptables                                test-1.5.x-cluster_24-temptables
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_25-auth                                      test-1.5.x-cluster_25-auth
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_26-triggers                                  test-1.5.x-cluster_26-triggers
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_27-foreignkeys                               test-1.5.x-cluster_27-foreignkeys
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_28-documentation                             test-1.5.x-cluster_28-documentation
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_50-hartehanks                                test-1.5.x-cluster_50-hartehanks
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_52-movableink                                test-1.5.x-cluster_52-movableink
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_53-radiumone                                 test-1.5.x-cluster_53-radiumone
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_54-workday                                   test-1.5.x-cluster_54-workday
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_55-demo                                      test-1.5.x-cluster_55-demo
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_56-redpoint                                  test-1.5.x-cluster_56-redpoint
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_57-avenlo                                    test-1.5.x-cluster_57-avenlo
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_70-alter_table                               test-1.5.x-cluster_70-alter_table
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_71-clauses-group_by                          test-1.5.x-cluster_71-clauses-group_by
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_72-clauses-order_by                          test-1.5.x-cluster_72-clauses-order_by
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_73-comparisons                               test-1.5.x-cluster_73-comparisons
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_74-indexes                                   test-1.5.x-cluster_74-indexes
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_75-operators                                 test-1.5.x-cluster_75-operators
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_76-constraints-default                       test-1.5.x-cluster_76-constraints-default
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_77-constraints-not_null                      test-1.5.x-cluster_77-constraints-not_null
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_78-constraints-primary_key-multiple_columns  test-1.5.x-cluster_78-constraints-primary_key-multiple_columns
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_79-constraints-primary_key-single_columns    test-1.5.x-cluster_79-constraints-primary_key-single_columns
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_80-constraints-unique-multiple_columns       test-1.5.x-cluster_80-constraints-unique-multiple_columns
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_81-constraints-unique-single_columns         test-1.5.x-cluster_81-constraints-unique-single_columns
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_82-functions-aggregate                       test-1.5.x-cluster_82-functions-aggregate
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_83-functions-date                            test-1.5.x-cluster_83-functions-date
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_84-functions-numeric                         test-1.5.x-cluster_84-functions-numeric
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_85-functions-string                          test-1.5.x-cluster_85-functions-string
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_86-functions-trigonometrical                 test-1.5.x-cluster_86-functions-trigonometrical
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_87-functions-window-avg                      test-1.5.x-cluster_87-functions-window-avg
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_88-functions-window-sum                      test-1.5.x-cluster_88-functions-window-sum
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_89-functions-window-count                    test-1.5.x-cluster_89-functions-window-count
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_90-functions-window-dense_rank               test-1.5.x-cluster_90-functions-window-dense_rank
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_91-functions-window-first_value              test-1.5.x-cluster_91-functions-window-first_value
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_92-functions-window-last_value               test-1.5.x-cluster_92-functions-window-last_value
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_93-functions-window-min                      test-1.5.x-cluster_93-functions-window-min
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_94-functions-window-max                      test-1.5.x-cluster_94-functions-window-max
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_95-functions-window-lead                     test-1.5.x-cluster_95-functions-window-lead
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_96-functions-window-lag                      test-1.5.x-cluster_96-functions-window-lag
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_97-functions-window-rank                     test-1.5.x-cluster_97-functions-window-rank
# java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 copy-job test-spliceengine_master-cluster_98-functions-window-row_number               test-1.5.x-cluster_98-functions-window-row_number


java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_00-setup
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_02-microbenchmark
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_40-tpch
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_41-tpch-multiuser
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_01-tpcc
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_02-mvcc
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_03-backup
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_06-stats
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_07-checkconstraint
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_08-export
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_20-nist
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_21-basic
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_22-advanced
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_23-odbc
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_24-temptables
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_25-auth
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_26-triggers
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_27-foreignkeys
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_28-documentation
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_50-hartehanks
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_52-movableink
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_53-radiumone
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_54-workday
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_55-demo
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_56-redpoint
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_57-avenlo
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_70-alter_table
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_71-clauses-group_by
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_72-clauses-order_by
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_73-comparisons
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_74-indexes
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_75-operators
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_76-constraints-default
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_77-constraints-not_null
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_78-constraints-primary_key-multiple_columns
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_79-constraints-primary_key-single_columns
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_80-constraints-unique-multiple_columns
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_81-constraints-unique-single_columns
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_82-functions-aggregate
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_83-functions-date
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_84-functions-numeric
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_85-functions-string
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_86-functions-trigonometrical
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_87-functions-window-avg
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_88-functions-window-sum
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_89-functions-window-count
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_90-functions-window-dense_rank
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_91-functions-window-first_value
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_92-functions-window-last_value
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_93-functions-window-min
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_94-functions-window-max
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_95-functions-window-lead
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_96-functions-window-lag
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_97-functions-window-rank
java -jar jenkins-cli.jar -s http://stl-colo-vm-jm.splicemachine.local:8080 delete-job test-spliceengine_master-cluster_98-functions-window-row_number

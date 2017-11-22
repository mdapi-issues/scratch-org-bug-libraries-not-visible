@isTest
private with sharing class LibrariesTest {

    @isTest static void test_create_and_query_library_by_name() {
        insert new ContentWorkspace(Name='Bar');
        List<ContentWorkspace> results = [SELECT Id FROM ContentWorkspace WHERE Name = 'Foo'];
        System.assertEquals(1, results.size(), 'Could not query newly created ContentWorkspace');
    }

    @isTest static void test_create_libraries_and_query_all() {
        insert new List<ContentWorkspace>{
            new ContentWorkspace(Name='Bar'),
            new ContentWorkspace(Name='Baz')
        };
        List<ContentWorkspace> results = [SELECT Id FROM ContentWorkspace];
        System.assert(results.size() >= 2, 'Inserted 2 new ContentWorkspaces but only found ' + results.size());
    }

}

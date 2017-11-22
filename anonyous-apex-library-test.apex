insert new ContentWorkspace(Name='Foo');
List<ContentWorkspace> results = [SELECT Id, Name FROM ContentWorkspace];
System.debug(results);
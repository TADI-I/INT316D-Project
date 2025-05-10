package entities;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-10T19:26:33")
@StaticMetamodel(Tasks.class)
public class Tasks_ { 

    public static volatile SingularAttribute<Tasks, Long> id;
    public static volatile SingularAttribute<Tasks, String> title;
    public static volatile SingularAttribute<Tasks, Date> creationDate;
    public static volatile SingularAttribute<Tasks, String> desc;
    public static volatile SingularAttribute<Tasks, String> status;

}
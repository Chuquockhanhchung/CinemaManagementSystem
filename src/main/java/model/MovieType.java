package model;

public class MovieType {
    private int TypeID;
    private String TypeName;
    private String TypeDescription;

    public MovieType() {
    }
public MovieType(int TypeID, String TypeName, String TypeDescription) {
        this.TypeID = TypeID;
        this.TypeName = TypeName;
        this.TypeDescription = TypeDescription;

}
    public int getTypeID() {
        return TypeID;
    }

    public void setTypeID(int typeID) {
        TypeID = typeID;
    }

    public String getTypeName() {
        return TypeName;
    }

    public void setTypeName(String typeName) {
        TypeName = typeName;
    }

    public String getTypeDescription() {
        return TypeDescription;
    }

    public void setTypeDescription(String typeDescription) {
        TypeDescription = typeDescription;
    }
}

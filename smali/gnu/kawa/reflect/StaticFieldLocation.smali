.class public Lgnu/kawa/reflect/StaticFieldLocation;
.super Lgnu/kawa/reflect/FieldLocation;
.source "StaticFieldLocation.java"


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0, p1, p2}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 10
    invoke-static {p1}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0, p1}, Lgnu/kawa/reflect/FieldLocation;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static define(Lgnu/mapping/Environment;Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 1

    .line 35
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v0, p3, p4}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    return-object v0
.end method

.method public static make(Lgnu/expr/Declaration;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 3

    .line 42
    iget-object v0, p0, Lgnu/expr/Declaration;->field:Lgnu/bytecode/Field;

    .line 43
    invoke-virtual {v0}, Lgnu/bytecode/Field;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v1

    .line 44
    new-instance v2, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2, p0}, Lgnu/kawa/reflect/StaticFieldLocation;->setDeclaration(Lgnu/expr/Declaration;)V

    return-object v2
.end method

.method public static make(Ljava/lang/String;Ljava/lang/String;)Lgnu/kawa/reflect/StaticFieldLocation;
    .locals 1

    .line 52
    new-instance v0, Lgnu/kawa/reflect/StaticFieldLocation;

    invoke-direct {v0, p0, p1}, Lgnu/kawa/reflect/StaticFieldLocation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lgnu/kawa/reflect/FieldLocation;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 26
    instance-of v0, p1, Lkawa/lang/Macro;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Lgnu/kawa/reflect/StaticFieldLocation;->getDeclaration()Lgnu/expr/Declaration;

    :cond_0
    return-object p1
.end method

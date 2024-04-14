.class public Lkawa/lang/RecordConstructor;
.super Lgnu/mapping/ProcedureN;
.source "RecordConstructor.java"


# instance fields
.field fields:[Lgnu/bytecode/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V
    .locals 6

    .line 59
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 60
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    if-nez p2, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 65
    invoke-static {p2, v0}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v1

    .line 66
    new-array v2, v1, [Lgnu/bytecode/Field;

    iput-object v2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 67
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v2

    :goto_0
    if-ge v0, v1, :cond_3

    .line 70
    check-cast p2, Lgnu/lists/Pair;

    .line 71
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    :goto_1
    if-eqz v4, :cond_2

    .line 76
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v5

    if-ne v5, v3, :cond_1

    .line 78
    iget-object v3, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    aput-object v4, v3, v0

    .line 82
    invoke-virtual {p2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v4}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v4

    goto :goto_1

    .line 75
    :cond_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no such field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_2
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 13
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 14
    iput-object p2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 24
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    .line 55
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, p2}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lgnu/bytecode/Field;)V
    .locals 0

    .line 19
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/ClassType;

    invoke-direct {p0, p1, p2}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V

    return-void
.end method

.method private init(Lgnu/bytecode/ClassType;)V
    .locals 5

    .line 34
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 35
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x9

    if-ne v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 37
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_1
    new-array v1, v2, [Lgnu/bytecode/Field;

    iput-object v1, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    :goto_1
    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x9

    if-ne v1, v3, :cond_2

    .line 49
    iget-object v1, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    add-int/lit8 v2, v0, 0x1

    aput-object p1, v1, v0

    move v0, v2

    .line 45
    :cond_2
    invoke-virtual {p1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object p1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 103
    :try_start_0
    iget-object v0, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    array-length v1, p1

    iget-object v2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v2, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 115
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 117
    iget-object v2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    aget-object v2, v2, v1

    .line 120
    :try_start_1
    invoke-virtual {v2}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    new-instance v0, Lgnu/mapping/WrappedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "illegal access for field "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-object v0

    .line 114
    :cond_1
    new-instance v0, Lgnu/mapping/WrongArguments;

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v0

    :catch_1
    move-exception p1

    .line 111
    new-instance v0, Lkawa/lang/GenericError;

    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception p1

    .line 107
    new-instance v0, Lkawa/lang/GenericError;

    invoke-virtual {p1}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .line 89
    iget-object v0, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v0, v0

    shl-int/lit8 v1, v0, 0xc

    or-int/2addr v0, v1

    return v0
.end method

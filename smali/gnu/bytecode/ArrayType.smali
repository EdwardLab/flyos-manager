.class public Lgnu/bytecode/ArrayType;
.super Lgnu/bytecode/ObjectType;
.source "ArrayType.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public elements:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    iput-object p2, p0, Lgnu/bytecode/ArrayType;->this_name:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    return-void
.end method

.method public static make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;
    .locals 3

    .line 53
    iget-object v0, p0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lgnu/bytecode/ArrayType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 57
    iput-object v0, p0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    :cond_0
    return-object v0
.end method

.method static make(Ljava/lang/String;)Lgnu/bytecode/ArrayType;
    .locals 2

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    .line 41
    iget-object v1, v0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Lgnu/bytecode/ArrayType;

    invoke-direct {v1, v0, p0}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 45
    iput-object v1, v0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public compare(Lgnu/bytecode/Type;)I
    .locals 2

    .line 127
    sget-object v0, Lgnu/bytecode/ArrayType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 129
    :cond_0
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    check-cast p1, Lgnu/bytecode/ArrayType;

    iget-object p1, p1, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v0, p1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result p1

    return p1

    .line 131
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lgnu/bytecode/ArrayType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, -0x3

    return p1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getComponentType()Lgnu/bytecode/Type;
    .locals 1

    .line 62
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .line 33
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 34
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    if-ne v1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_1

    .line 106
    sget-object v1, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v1, p1, v0, p3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v0

    const/4 v1, 0x1

    if-le p2, v1, :cond_1

    .line 107
    sget-object p2, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    invoke-interface {p1, p2}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 111
    sget-object p1, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    .line 113
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 4

    .line 71
    :try_start_0
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getInternalName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    .line 78
    :cond_0
    iget v0, p0, Lgnu/bytecode/ArrayType;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lgnu/bytecode/ArrayType;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    iget v1, p0, Lgnu/bytecode/ArrayType;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 92
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    return-object v0

    .line 84
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such array class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    throw v1
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->signature:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ArrayType;->setSignature(Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 146
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgnu/bytecode/Type;

    iput-object p1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iget-object v0, v0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_0

    return-object v0

    .line 156
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iput-object p0, v0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

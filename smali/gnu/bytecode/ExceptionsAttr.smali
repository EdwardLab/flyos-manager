.class public Lgnu/bytecode/ExceptionsAttr;
.super Lgnu/bytecode/Attribute;
.source "ExceptionsAttr.java"


# instance fields
.field exception_table:[S

.field exceptions:[Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Method;)V
    .locals 1

    const-string v0, "Exceptions"

    .line 19
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, p1}, Lgnu/bytecode/ExceptionsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 45
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p1

    .line 46
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    .line 47
    new-array v1, v0, [S

    iput-object v1, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 50
    iget-object v1, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    iget-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v2

    iget v2, v2, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getExceptions()[Lgnu/bytecode/ClassType;
    .locals 1

    .line 64
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    .line 58
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 4

    const-string v0, "Attribute \""

    .line 79
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lgnu/bytecode/ExceptionsAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, "\", length:"

    .line 81
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lgnu/bytecode/ExceptionsAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", count: "

    .line 83
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    .line 85
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 88
    iget-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    aget-short v2, v2, v1

    const v3, 0xffff

    and-int/2addr v2, v3

    const-string v3, "  "

    .line 89
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    const/4 v3, 0x7

    .line 91
    invoke-virtual {p1, v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    .line 92
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExceptions([Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    return-void
.end method

.method public setExceptions([SLgnu/bytecode/ClassType;)V
    .locals 3

    .line 27
    iput-object p1, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    .line 28
    array-length v0, p1

    new-array v0, v0, [Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    .line 29
    invoke-virtual {p2}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p2

    .line 30
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 31
    iget-object v1, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    aget-short v2, p1, v0

    invoke-virtual {p2, v2}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/CpoolClass;

    invoke-virtual {v2}, Lgnu/bytecode/CpoolClass;->getClassType()Lgnu/bytecode/ObjectType;

    move-result-object v2

    check-cast v2, Lgnu/bytecode/ClassType;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lgnu/bytecode/ExceptionsAttr;->exceptions:[Lgnu/bytecode/ClassType;

    array-length v0, v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lgnu/bytecode/ExceptionsAttr;->exception_table:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

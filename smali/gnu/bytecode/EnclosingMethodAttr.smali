.class public Lgnu/bytecode/EnclosingMethodAttr;
.super Lgnu/bytecode/Attribute;
.source "EnclosingMethodAttr.java"


# instance fields
.field class_index:I

.field method:Lgnu/bytecode/Method;

.field method_index:I


# direct methods
.method public constructor <init>(IILgnu/bytecode/ClassType;)V
    .locals 0

    .line 21
    invoke-direct {p0, p3}, Lgnu/bytecode/EnclosingMethodAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 22
    iput p1, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    .line 23
    iput p2, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1

    const-string v0, "EnclosingMethod"

    .line 15
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p1}, Lgnu/bytecode/EnclosingMethodAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    return-void
.end method

.method public static getFirstEnclosingMethod(Lgnu/bytecode/Attribute;)Lgnu/bytecode/EnclosingMethodAttr;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 30
    instance-of v0, p0, Lgnu/bytecode/EnclosingMethodAttr;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    iget-object p0, p0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_0

    .line 31
    :cond_1
    :goto_1
    check-cast p0, Lgnu/bytecode/EnclosingMethodAttr;

    return-object p0
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 40
    iget-object v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p1

    .line 43
    iget-object v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {v0}, Lgnu/bytecode/Method;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/CpoolClass;->getIndex()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    .line 44
    iget-object v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->method:Lgnu/bytecode/Method;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ConstantPool;->addNameAndType(Lgnu/bytecode/Method;)Lgnu/bytecode/CpoolNameAndType;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/CpoolNameAndType;->getIndex()I

    move-result p1

    iput p1, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    :cond_0
    return-void
.end method

.method public getLength()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v0, Lgnu/bytecode/ClassType;

    .line 58
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v0

    const-string v1, "Attribute \""

    .line 59
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lgnu/bytecode/EnclosingMethodAttr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v1, "\", length:"

    .line 61
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lgnu/bytecode/EnclosingMethodAttr;->getLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    const-string v1, "  class: "

    .line 63
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 64
    iget v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 65
    iget v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v1

    .line 66
    check-cast v1, Lgnu/bytecode/CpoolClass;

    invoke-virtual {v1}, Lgnu/bytecode/CpoolClass;->getStringName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v1, ", method: "

    .line 67
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 68
    iget v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 69
    iget v1, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, p1, v1}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 71
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->class_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget v0, p0, Lgnu/bytecode/EnclosingMethodAttr;->method_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

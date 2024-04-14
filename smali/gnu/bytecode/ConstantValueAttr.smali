.class public Lgnu/bytecode/ConstantValueAttr;
.super Lgnu/bytecode/Attribute;
.source "ConstantValueAttr.java"


# instance fields
.field value:Ljava/lang/Object;

.field value_index:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const-string v0, "ConstantValue"

    .line 53
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 54
    iput p1, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "ConstantValue"

    .line 47
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 60
    iget v0, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    if-nez v0, :cond_5

    .line 62
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p1

    const/4 v0, 0x0

    .line 64
    iget-object v1, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 65
    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lgnu/bytecode/ConstantPool;->addString(Ljava/lang/String;)Lgnu/bytecode/CpoolString;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 67
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ConstantPool;->addInt(I)Lgnu/bytecode/CpoolValue1;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_2

    .line 69
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/ConstantPool;->addLong(J)Lgnu/bytecode/CpoolValue2;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 71
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ConstantPool;->addFloat(F)Lgnu/bytecode/CpoolValue1;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_3
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 73
    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lgnu/bytecode/ConstantPool;->addDouble(D)Lgnu/bytecode/CpoolValue2;

    move-result-object v0

    .line 74
    :cond_4
    :goto_0
    invoke-virtual {v0}, Lgnu/bytecode/CpoolEntry;->getIndex()I

    move-result p1

    iput p1, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    :cond_5
    return-void
.end method

.method public final getLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getValue(Lgnu/bytecode/ConstantPool;)Ljava/lang/Object;
    .locals 3

    .line 19
    iget-object v0, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 21
    :cond_0
    iget v0, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    check-cast p1, Lgnu/bytecode/CpoolString;

    invoke-virtual {p1}, Lgnu/bytecode/CpoolString;->getString()Lgnu/bytecode/CpoolUtf8;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/CpoolUtf8;->getString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_0

    .line 38
    :cond_2
    check-cast p1, Lgnu/bytecode/CpoolValue2;

    iget-wide v0, p1, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 39
    new-instance p1, Ljava/lang/Double;

    invoke-direct {p1, v0, v1}, Ljava/lang/Double;-><init>(D)V

    iput-object p1, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :cond_3
    new-instance v0, Ljava/lang/Long;

    check-cast p1, Lgnu/bytecode/CpoolValue2;

    iget-wide v1, p1, Lgnu/bytecode/CpoolValue2;->value:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    iput-object v0, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_4
    check-cast p1, Lgnu/bytecode/CpoolValue1;

    iget p1, p1, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    .line 35
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v0, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    goto :goto_0

    .line 28
    :cond_5
    new-instance v0, Ljava/lang/Integer;

    check-cast p1, Lgnu/bytecode/CpoolValue1;

    iget p1, p1, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    .line 42
    :goto_0
    iget-object p1, p0, Lgnu/bytecode/ConstantValueAttr;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 2

    const-string v0, "Attribute \""

    .line 87
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lgnu/bytecode/ConstantValueAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, "\", length:"

    .line 89
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lgnu/bytecode/ConstantValueAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", value: "

    .line 91
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p1, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    invoke-virtual {p0, v0}, Lgnu/bytecode/ConstantValueAttr;->getValue(Lgnu/bytecode/ConstantPool;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 96
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printQuotedString(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 103
    iget-object v0, p1, Lgnu/bytecode/ClassTypeWriter;->ctype:Lgnu/bytecode/ClassType;

    iget-object v0, v0, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    iget v1, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {v0, v1}, Lgnu/bytecode/ConstantPool;->getPoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v0

    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, p1, v1}, Lgnu/bytecode/CpoolEntry;->print(Lgnu/bytecode/ClassTypeWriter;I)V

    .line 106
    :goto_0
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

    .line 82
    iget v0, p0, Lgnu/bytecode/ConstantValueAttr;->value_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

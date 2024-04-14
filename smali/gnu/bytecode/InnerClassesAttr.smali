.class public Lgnu/bytecode/InnerClassesAttr;
.super Lgnu/bytecode/Attribute;
.source "InnerClassesAttr.java"


# instance fields
.field count:I

.field data:[S


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 1

    const-string v0, "InnerClasses"

    .line 14
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p1}, Lgnu/bytecode/InnerClassesAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    return-void
.end method

.method public constructor <init>([SLgnu/bytecode/ClassType;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Lgnu/bytecode/InnerClassesAttr;-><init>(Lgnu/bytecode/ClassType;)V

    .line 21
    array-length p2, p1

    shr-int/lit8 p2, p2, 0x2

    int-to-short p2, p2

    iput p2, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    .line 22
    iput-object p1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    return-void
.end method

.method public static getFirstInnerClasses(Lgnu/bytecode/Attribute;)Lgnu/bytecode/InnerClassesAttr;
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 29
    instance-of v0, p0, Lgnu/bytecode/InnerClassesAttr;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    iget-object p0, p0, Lgnu/bytecode/Attribute;->next:Lgnu/bytecode/Attribute;

    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    check-cast p0, Lgnu/bytecode/InnerClassesAttr;

    return-object p0
.end method


# virtual methods
.method addClass(Lgnu/bytecode/CpoolClass;Lgnu/bytecode/ClassType;)V
    .locals 6

    .line 39
    iget v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    mul-int/lit8 v0, v0, 0x4

    .line 40
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/16 v1, 0x10

    new-array v1, v1, [S

    .line 41
    iput-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    goto :goto_0

    .line 42
    :cond_0
    array-length v3, v1

    if-lt v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x2

    .line 44
    new-array v3, v3, [S

    .line 45
    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput-object v3, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    .line 48
    :cond_1
    :goto_0
    iget-object p2, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    .line 49
    invoke-virtual {p1}, Lgnu/bytecode/CpoolClass;->getClassType()Lgnu/bytecode/ObjectType;

    move-result-object v1

    check-cast v1, Lgnu/bytecode/ClassType;

    .line 51
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v3}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object v3

    iget v3, v3, Lgnu/bytecode/CpoolUtf8;->index:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 54
    :goto_2
    iget-object v4, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    iget p1, p1, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short p1, p1

    aput-short p1, v4, v0

    .line 55
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p1

    .line 56
    iget-object v4, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v5, v0, 0x1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p1}, Lgnu/bytecode/ConstantPool;->addClass(Lgnu/bytecode/ObjectType;)Lgnu/bytecode/CpoolClass;

    move-result-object p1

    iget p1, p1, Lgnu/bytecode/CpoolClass;->index:I

    int-to-short v2, p1

    :goto_3
    aput-short v2, v4, v5

    .line 58
    iget-object p1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 p2, v0, 0x2

    int-to-short v2, v3

    aput-short v2, p1, p2

    .line 59
    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result p1

    and-int/lit8 p1, p1, -0x21

    .line 61
    iget-object p2, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v0, v0, 0x3

    int-to-short p1, p1

    aput-short p1, p2, v0

    return-void
.end method

.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 0

    .line 66
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    return-void
.end method

.method public getLength()I
    .locals 1

    .line 72
    iget v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 12

    .line 91
    iget-object v0, p0, Lgnu/bytecode/InnerClassesAttr;->container:Lgnu/bytecode/AttrContainer;

    check-cast v0, Lgnu/bytecode/ClassType;

    .line 92
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object v1

    :goto_0
    const-string v3, "Attribute \""

    .line 93
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lgnu/bytecode/InnerClassesAttr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v3, "\", length:"

    .line 95
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lgnu/bytecode/InnerClassesAttr;->getLength()I

    move-result v3

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v3, ", count: "

    .line 97
    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 98
    iget v3, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    invoke-virtual {p1, v3}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 99
    :goto_1
    iget v5, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    if-ge v4, v5, :cond_e

    const v5, 0xffff

    if-nez v1, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    .line 101
    :cond_1
    iget-object v6, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v7, v4, 0x4

    aget-short v6, v6, v7

    and-int/2addr v6, v5

    :goto_2
    if-eqz v1, :cond_3

    if-nez v6, :cond_2

    goto :goto_3

    .line 102
    :cond_2
    invoke-virtual {v1, v6}, Lgnu/bytecode/ConstantPool;->getForcedClass(I)Lgnu/bytecode/CpoolClass;

    move-result-object v7

    goto :goto_4

    :cond_3
    :goto_3
    move-object v7, v2

    :goto_4
    if-eqz v7, :cond_4

    .line 104
    iget-object v8, v7, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    instance-of v8, v8, Lgnu/bytecode/ClassType;

    if-eqz v8, :cond_4

    iget-object v8, v7, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    check-cast v8, Lgnu/bytecode/ClassType;

    goto :goto_5

    :cond_4
    move-object v8, v2

    :goto_5
    const/16 v9, 0x20

    .line 107
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    if-nez v6, :cond_5

    if-eqz v8, :cond_5

    .line 108
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getModifiers()I

    move-result v10

    goto :goto_6

    :cond_5
    iget-object v10, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v11, v4, 0x4

    add-int/lit8 v11, v11, 0x3

    aget-short v10, v10, v11

    and-int/2addr v10, v5

    :goto_6
    const/16 v11, 0x49

    .line 110
    invoke-static {v10, v11}, Lgnu/bytecode/Access;->toString(IC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1, v9}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    const/4 v9, 0x1

    if-nez v6, :cond_6

    if-eqz v8, :cond_6

    .line 115
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 118
    :cond_6
    iget-object v10, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v11, v4, 0x4

    add-int/lit8 v11, v11, 0x2

    aget-short v10, v10, v11

    and-int/2addr v10, v5

    if-eqz v1, :cond_8

    if-nez v10, :cond_7

    goto :goto_7

    .line 123
    :cond_7
    invoke-virtual {p1, v10}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 124
    invoke-virtual {v1, v10, v9}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v10

    check-cast v10, Lgnu/bytecode/CpoolUtf8;

    move-object v11, v10

    check-cast v11, Lgnu/bytecode/CpoolUtf8;

    iget-object v10, v10, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    goto :goto_8

    :cond_8
    :goto_7
    const-string v10, "(Anonymous)"

    .line 128
    :goto_8
    invoke-virtual {p1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v10, " = "

    .line 129
    invoke-virtual {p1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    if-eqz v7, :cond_9

    .line 131
    invoke-virtual {v7}, Lgnu/bytecode/CpoolClass;->getClassName()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_9
    const-string v7, "(Unknown)"

    .line 134
    :goto_9
    invoke-virtual {p1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v7, "; "

    .line 135
    invoke-virtual {p1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v7, "not a member"

    const-string v10, "member of "

    if-nez v6, :cond_c

    if-eqz v8, :cond_c

    .line 138
    invoke-virtual {v8}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-lez v6, :cond_a

    add-int/lit8 v6, v6, 0x1

    .line 141
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_a
    const/16 v6, 0x24

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/2addr v6, v9

    .line 144
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_b

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_b

    const/16 v6, 0x39

    if-gt v5, v6, :cond_b

    .line 146
    invoke-virtual {p1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 149
    :cond_b
    invoke-virtual {p1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 156
    :cond_c
    iget-object v6, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v9

    aget-short v6, v6, v8

    and-int/2addr v5, v6

    if-nez v5, :cond_d

    .line 158
    invoke-virtual {p1, v7}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_a

    .line 161
    :cond_d
    invoke-virtual {p1, v10}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/4 v6, 0x7

    .line 162
    invoke-virtual {v1, v5, v6}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object v5

    .line 163
    check-cast v5, Lgnu/bytecode/CpoolClass;

    invoke-virtual {v5}, Lgnu/bytecode/CpoolClass;->getStringName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 166
    :goto_a
    invoke-virtual {p1}, Lgnu/bytecode/ClassTypeWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_e
    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget v0, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v0, 0x0

    .line 80
    :goto_0
    iget v1, p0, Lgnu/bytecode/InnerClassesAttr;->count:I

    if-ge v0, v1, :cond_0

    .line 82
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    mul-int/lit8 v2, v0, 0x4

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 83
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v3, v2, 0x1

    aget-short v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 84
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v3, v2, 0x2

    aget-short v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 85
    iget-object v1, p0, Lgnu/bytecode/InnerClassesAttr;->data:[S

    add-int/lit8 v2, v2, 0x3

    aget-short v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

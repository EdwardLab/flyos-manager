.class public Lgnu/bytecode/RuntimeAnnotationsAttr;
.super Lgnu/bytecode/MiscAttr;
.source "RuntimeAnnotationsAttr.java"


# instance fields
.field numEntries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLgnu/bytecode/AttrContainer;)V
    .locals 2

    .line 15
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lgnu/bytecode/MiscAttr;-><init>(Ljava/lang/String;[BII)V

    .line 16
    invoke-virtual {p0, p3}, Lgnu/bytecode/RuntimeAnnotationsAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 17
    invoke-virtual {p0, v1}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2(I)I

    move-result p1

    iput p1, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    return-void
.end method


# virtual methods
.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 3

    const-string v0, "Attribute \""

    .line 22
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, "\", length:"

    .line 24
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", number of entries: "

    .line 26
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    .line 28
    iget v0, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    add-int/lit8 v1, v0, 0x2

    .line 29
    iput v1, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    const/4 v1, 0x0

    .line 30
    :goto_0
    iget v2, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->numEntries:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x2

    .line 32
    invoke-virtual {p0, v2, p1}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iput v0, p0, Lgnu/bytecode/RuntimeAnnotationsAttr;->offset:I

    return-void
.end method

.method public printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v0

    .line 40
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 41
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    const/16 v1, 0x40

    .line 42
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 43
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    .line 44
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v0

    .line 45
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    add-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v2

    .line 50
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 51
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    const/4 v3, 0x1

    .line 52
    invoke-virtual {p2, v2, v3}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    const-string v2, " => "

    .line 53
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V

    .line 55
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V
    .locals 6

    .line 61
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u1()I

    move-result v0

    .line 62
    iget v1, p2, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    const-string v1, "[kind:"

    .line 64
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_0

    int-to-char v1, v0

    .line 66
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    :goto_0
    const-string v1, "] "

    .line 69
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    :cond_1
    const/16 v1, 0x40

    if-eq v0, v1, :cond_10

    const/16 v1, 0x46

    const/4 v2, 0x3

    const/16 v3, 0x5a

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v0, v1, :cond_a

    const/16 v1, 0x53

    if-eq v0, v1, :cond_7

    const/16 v1, 0x63

    if-eq v0, v1, :cond_6

    const/16 v1, 0x65

    if-eq v0, v1, :cond_3

    const/16 v1, 0x73

    if-eq v0, v1, :cond_b

    const/16 v1, 0x49

    if-eq v0, v1, :cond_7

    const/16 v1, 0x4a

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_7

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 131
    :cond_2
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v0

    const-string v1, "array length:"

    .line 132
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    :goto_1
    if-ge v4, v0, :cond_11

    .line 136
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    add-int/lit8 v1, p1, 0x2

    .line 137
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 138
    invoke-virtual {p2, v4}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v2, ": "

    .line 139
    invoke-virtual {p2, v2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, v1, p2}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotationElementValue(ILgnu/bytecode/ClassTypeWriter;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    :cond_3
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result p1

    .line 106
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result v0

    const-string v1, "enum["

    .line 107
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 108
    iget v1, p2, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const-string v1, "type:"

    .line 109
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 110
    :cond_4
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 111
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    .line 112
    iget p1, p2, Lgnu/bytecode/ClassTypeWriter;->flags:I

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_5

    const-string p1, " value:"

    .line 113
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 p1, 0x20

    .line 115
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 116
    :goto_2
    invoke-virtual {p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 117
    invoke-virtual {p2, v0, v5}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    const-string p1, "]"

    .line 118
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 121
    :cond_6
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result p1

    .line 122
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    .line 123
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printContantUtf8AsClass(I)V

    goto :goto_4

    :cond_7
    :pswitch_0
    const/4 v4, 0x3

    :cond_8
    if-nez v4, :cond_9

    const/4 p1, 0x5

    const/4 v4, 0x5

    :cond_9
    :pswitch_1
    if-nez v4, :cond_a

    const/4 v4, 0x6

    :cond_a
    if-nez v4, :cond_b

    const/4 v4, 0x4

    :cond_b
    if-nez v4, :cond_c

    const/4 v4, 0x1

    .line 93
    :cond_c
    invoke-virtual {p0}, Lgnu/bytecode/RuntimeAnnotationsAttr;->u2()I

    move-result p1

    .line 94
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->getCpoolEntry(I)Lgnu/bytecode/CpoolEntry;

    move-result-object v1

    .line 95
    invoke-virtual {p2, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    if-ne v0, v3, :cond_f

    if-eqz v1, :cond_f

    .line 97
    invoke-virtual {v1}, Lgnu/bytecode/CpoolEntry;->getTag()I

    move-result v0

    if-ne v0, v2, :cond_f

    check-cast v1, Lgnu/bytecode/CpoolValue1;

    iget v0, v1, Lgnu/bytecode/CpoolValue1;->value:I

    if-eqz v0, :cond_d

    iget v0, v1, Lgnu/bytecode/CpoolValue1;->value:I

    if-ne v0, v5, :cond_f

    .line 100
    :cond_d
    iget p1, v1, Lgnu/bytecode/CpoolValue1;->value:I

    if-nez p1, :cond_e

    const-string p1, "false"

    goto :goto_3

    :cond_e
    const-string p1, "true"

    :goto_3
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 102
    :cond_f
    invoke-virtual {p2, p1, v4}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    goto :goto_4

    .line 126
    :cond_10
    invoke-virtual {p2}, Lgnu/bytecode/ClassTypeWriter;->println()V

    add-int/lit8 p1, p1, 0x2

    .line 127
    invoke-virtual {p2, p1}, Lgnu/bytecode/ClassTypeWriter;->printSpaces(I)V

    .line 128
    invoke-virtual {p0, p1, p2}, Lgnu/bytecode/RuntimeAnnotationsAttr;->printAnnotation(ILgnu/bytecode/ClassTypeWriter;)V

    :cond_11
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

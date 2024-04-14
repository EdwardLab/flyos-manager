.class public Lgnu/bytecode/LineNumbersAttr;
.super Lgnu/bytecode/Attribute;
.source "LineNumbersAttr.java"


# instance fields
.field linenumber_count:I

.field linenumber_table:[S


# direct methods
.method public constructor <init>(Lgnu/bytecode/CodeAttr;)V
    .locals 1

    const-string v0, "LineNumberTable"

    .line 24
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lgnu/bytecode/LineNumbersAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    .line 26
    iput-object p0, p1, Lgnu/bytecode/CodeAttr;->lines:Lgnu/bytecode/LineNumbersAttr;

    return-void
.end method

.method public constructor <init>([SLgnu/bytecode/CodeAttr;)V
    .locals 0

    .line 31
    invoke-direct {p0, p2}, Lgnu/bytecode/LineNumbersAttr;-><init>(Lgnu/bytecode/CodeAttr;)V

    .line 32
    iput-object p1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    .line 33
    array-length p1, p1

    shr-int/lit8 p1, p1, 0x1

    iput p1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    return-void
.end method


# virtual methods
.method public final getLength()I
    .locals 1

    .line 56
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 58
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    return v0
.end method

.method public getLineNumberTable()[S
    .locals 1

    .line 59
    iget-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 4

    const-string v0, "Attribute \""

    .line 73
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lgnu/bytecode/LineNumbersAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, "\", length:"

    .line 75
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lgnu/bytecode/LineNumbersAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", count: "

    .line 77
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 78
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    const/4 v0, 0x0

    .line 79
    :goto_0
    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    if-ge v0, v1, :cond_0

    const-string v1, "  line: "

    .line 81
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, 0x1

    aget-short v1, v1, v3

    const v3, 0xffff

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v1, " at pc: "

    .line 83
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    aget-short v1, v1, v2

    and-int/2addr v1, v3

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(II)V
    .locals 4

    .line 41
    iget-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    if-nez v0, :cond_0

    const/16 v0, 0x20

    new-array v0, v0, [S

    .line 42
    iput-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    goto :goto_0

    .line 43
    :cond_0
    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 45
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [S

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x0

    .line 46
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    iput-object v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    .line 50
    :cond_1
    :goto_0
    iget-object v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    iget v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v2, v1, 0x2

    int-to-short p2, p2

    aput-short p2, v0, v2

    mul-int/lit8 p2, v1, 0x2

    add-int/lit8 p2, p2, 0x1

    int-to-short p1, p1

    .line 51
    aput-short p1, v0, p2

    add-int/lit8 v1, v1, 0x1

    .line 52
    iput v1, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 64
    iget v0, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_count:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 67
    iget-object v2, p0, Lgnu/bytecode/LineNumbersAttr;->linenumber_table:[S

    aget-short v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

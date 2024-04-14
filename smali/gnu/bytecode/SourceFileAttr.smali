.class public Lgnu/bytecode/SourceFileAttr;
.super Lgnu/bytecode/Attribute;
.source "SourceFileAttr.java"


# instance fields
.field filename:Ljava/lang/String;

.field filename_index:I


# direct methods
.method public constructor <init>(ILgnu/bytecode/ClassType;)V
    .locals 1

    const-string v0, "SourceFile"

    .line 58
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 59
    iget-object p2, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object p2

    check-cast p2, Lgnu/bytecode/CpoolUtf8;

    .line 61
    iget-object p2, p2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object p2, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    .line 62
    iput p1, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SourceFile"

    .line 52
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    return-void
.end method

.method public static fixSourceFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "file.separator"

    const-string v1, "/"

    .line 26
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_0

    .line 31
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static setSourceFile(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SourceFile"

    .line 38
    invoke-static {p0, v0}, Lgnu/bytecode/Attribute;->get(Lgnu/bytecode/AttrContainer;Ljava/lang/String;)Lgnu/bytecode/Attribute;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    instance-of v1, v0, Lgnu/bytecode/SourceFileAttr;

    if-eqz v1, :cond_0

    .line 41
    check-cast v0, Lgnu/bytecode/SourceFileAttr;

    invoke-virtual {v0, p1}, Lgnu/bytecode/SourceFileAttr;->setSourceFile(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v0, Lgnu/bytecode/SourceFileAttr;

    invoke-direct {v0, p1}, Lgnu/bytecode/SourceFileAttr;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p0}, Lgnu/bytecode/SourceFileAttr;->addToFrontOf(Lgnu/bytecode/AttrContainer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 69
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p1

    iget-object v0, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result p1

    iput p1, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    :cond_0
    return-void
.end method

.method public final getLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSourceFile()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 2

    const-string v0, "Attribute \""

    .line 82
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const-string v0, "\", length:"

    .line 84
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getLength()I

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    const-string v0, ", "

    .line 86
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    const/16 v0, 0x22

    .line 88
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 89
    invoke-virtual {p0}, Lgnu/bytecode/SourceFileAttr;->getSourceFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    return-void
.end method

.method public setSourceFile(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lgnu/bytecode/SourceFileAttr;->filename:Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    return-void
.end method

.method public write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget v0, p0, Lgnu/bytecode/SourceFileAttr;->filename_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

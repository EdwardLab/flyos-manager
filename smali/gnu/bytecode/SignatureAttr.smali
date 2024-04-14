.class public Lgnu/bytecode/SignatureAttr;
.super Lgnu/bytecode/Attribute;
.source "SignatureAttr.java"


# instance fields
.field signature:Ljava/lang/String;

.field signature_index:I


# direct methods
.method public constructor <init>(ILgnu/bytecode/Member;)V
    .locals 1

    const-string v0, "Signature"

    .line 31
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 32
    instance-of v0, p2, Lgnu/bytecode/ClassType;

    if-eqz v0, :cond_0

    check-cast p2, Lgnu/bytecode/ClassType;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lgnu/bytecode/Member;->getDeclaringClass()Lgnu/bytecode/ClassType;

    move-result-object p2

    .line 34
    :goto_0
    iget-object p2, p2, Lgnu/bytecode/ClassType;->constants:Lgnu/bytecode/ConstantPool;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object p2

    check-cast p2, Lgnu/bytecode/CpoolUtf8;

    .line 36
    iget-object p2, p2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object p2, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    .line 37
    iput p1, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Signature"

    .line 25
    invoke-direct {p0, v0}, Lgnu/bytecode/Attribute;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object p1, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public assignConstants(Lgnu/bytecode/ClassType;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->assignConstants(Lgnu/bytecode/ClassType;)V

    .line 43
    iget v0, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getConstants()Lgnu/bytecode/ConstantPool;

    move-result-object p1

    iget-object v0, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lgnu/bytecode/ConstantPool;->addUtf8(Ljava/lang/String;)Lgnu/bytecode/CpoolUtf8;

    move-result-object p1

    invoke-virtual {p1}, Lgnu/bytecode/CpoolUtf8;->getIndex()I

    move-result p1

    iput p1, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    :cond_0
    return-void
.end method

.method public final getLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lgnu/bytecode/Attribute;->print(Lgnu/bytecode/ClassTypeWriter;)V

    const-string v0, "  "

    .line 57
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 58
    iget v0, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(I)V

    const/16 v0, 0x22

    .line 59
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    .line 60
    invoke-virtual {p0}, Lgnu/bytecode/SignatureAttr;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->println(C)V

    return-void
.end method

.method protected setSignature(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lgnu/bytecode/SignatureAttr;->signature:Ljava/lang/String;

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

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
    iget v0, p0, Lgnu/bytecode/SignatureAttr;->signature_index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

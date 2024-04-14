.class public Lgnu/bytecode/CpoolNameAndType;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolNameAndType.java"


# instance fields
.field name:Lgnu/bytecode/CpoolUtf8;

.field type:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 20
    iput-object p3, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    .line 21
    iput-object p4, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I
    .locals 0

    .line 38
    invoke-virtual {p0}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result p0

    invoke-virtual {p1}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result p1

    xor-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final getName()Lgnu/bytecode/CpoolUtf8;
    .locals 1

    .line 28
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public final getType()Lgnu/bytecode/CpoolUtf8;
    .locals 1

    .line 33
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 43
    iget v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v0, v1}, Lgnu/bytecode/CpoolNameAndType;->hashCode(Lgnu/bytecode/CpoolUtf8;Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    .line 45
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolNameAndType;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string v1, "NameAndType "

    .line 58
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const-string v1, "NameAndType name: "

    .line 61
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 64
    :cond_1
    :goto_0
    iget-object v1, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v1, v1, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->printName(Ljava/lang/String;)V

    if-gt p2, v0, :cond_2

    const/16 p2, 0x20

    .line 66
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->print(C)V

    goto :goto_1

    :cond_2
    const-string p2, ", signature: "

    .line 69
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 70
    iget-object p2, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 72
    :goto_1
    iget-object p2, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    iget-object p2, p2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printSignature(Ljava/lang/String;)V

    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xc

    .line 50
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 51
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->name:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 52
    iget-object v0, p0, Lgnu/bytecode/CpoolNameAndType;->type:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

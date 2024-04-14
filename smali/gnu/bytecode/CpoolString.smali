.class public Lgnu/bytecode/CpoolString;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolString.java"


# instance fields
.field str:Lgnu/bytecode/CpoolUtf8;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILgnu/bytecode/CpoolUtf8;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 18
    iput-object p3, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;)I
    .locals 1

    .line 28
    invoke-virtual {p0}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result p0

    const v0, 0xf30f

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public final getString()Lgnu/bytecode/CpoolUtf8;
    .locals 1

    .line 25
    iget-object v0, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 32
    iget v0, p0, Lgnu/bytecode/CpoolString;->hash:I

    if-nez v0, :cond_0

    .line 33
    iget-object v0, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v0}, Lgnu/bytecode/CpoolString;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolString;->hash:I

    .line 34
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolString;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 1

    if-lez p2, :cond_0

    const-string v0, "String "

    .line 47
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 49
    iget-object p2, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 51
    :cond_0
    iget-object p2, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    iget p2, p2, Lgnu/bytecode/CpoolUtf8;->index:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lgnu/bytecode/ClassTypeWriter;->printConstantTersely(II)V

    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 40
    iget-object v0, p0, Lgnu/bytecode/CpoolString;->str:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

.class public Lgnu/bytecode/CpoolUtf8;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolUtf8.java"


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;ILjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 18
    iput-object p3, p0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getString()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 23
    iget v0, p0, Lgnu/bytecode/CpoolUtf8;->hash:I

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolUtf8;->hash:I

    .line 25
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolUtf8;->hash:I

    return v0
.end method

.method public final intern()V
    .locals 1

    .line 28
    iget-object v0, p0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    return-void
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 0

    if-lez p2, :cond_0

    const-string p2, "Utf8: "

    .line 46
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object p2, p0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printQuotedString(Ljava/lang/String;)V

    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 40
    iget-object v0, p0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method

.class public Lgnu/bytecode/CpoolClass;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolClass.java"


# instance fields
.field clas:Lgnu/bytecode/ObjectType;

.field name:Lgnu/bytecode/CpoolUtf8;


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
    iput-object p3, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    return-void
.end method

.method static final hashCode(Lgnu/bytecode/CpoolUtf8;)I
    .locals 0

    .line 56
    invoke-virtual {p0}, Lgnu/bytecode/CpoolUtf8;->hashCode()I

    move-result p0

    xor-int/lit16 p0, p0, 0xf0f

    return p0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 3

    .line 36
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getClassType()Lgnu/bytecode/ObjectType;
    .locals 3

    .line 42
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    if-eqz v0, :cond_0

    return-object v0

    .line 45
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    .line 47
    invoke-static {v0}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ObjectType;

    goto :goto_0

    :cond_1
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    .line 49
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    .line 50
    :goto_0
    iput-object v0, p0, Lgnu/bytecode/CpoolClass;->clas:Lgnu/bytecode/ObjectType;

    return-object v0
.end method

.method public final getName()Lgnu/bytecode/CpoolUtf8;
    .locals 1

    .line 25
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    return-object v0
.end method

.method public final getStringName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object v0, v0, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-static {v0}, Lgnu/bytecode/CpoolClass;->hashCode(Lgnu/bytecode/CpoolUtf8;)I

    move-result v0

    iput v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    .line 63
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolClass;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "Class "

    .line 75
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-le p2, v0, :cond_1

    const-string p2, "Class name: "

    .line 78
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 79
    iget-object p2, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->printOptionalIndex(Lgnu/bytecode/CpoolEntry;)V

    .line 81
    :cond_1
    :goto_0
    iget-object p2, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget-object p2, p2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_2

    .line 84
    invoke-static {p2, v0, v1, p1}, Lgnu/bytecode/Type;->printSignature(Ljava/lang/String;IILjava/io/PrintWriter;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 86
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x7

    .line 68
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 69
    iget-object v0, p0, Lgnu/bytecode/CpoolClass;->name:Lgnu/bytecode/CpoolUtf8;

    iget v0, v0, Lgnu/bytecode/CpoolUtf8;->index:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    return-void
.end method

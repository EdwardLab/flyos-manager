.class public Lgnu/bytecode/CpoolValue1;
.super Lgnu/bytecode/CpoolEntry;
.source "CpoolValue1.java"


# instance fields
.field tag:I

.field value:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lgnu/bytecode/CpoolEntry;-><init>()V

    iput p1, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    return-void
.end method

.method constructor <init>(Lgnu/bytecode/ConstantPool;III)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p3}, Lgnu/bytecode/CpoolEntry;-><init>(Lgnu/bytecode/ConstantPool;I)V

    .line 19
    iput p2, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    .line 20
    iput p4, p0, Lgnu/bytecode/CpoolValue1;->value:I

    return-void
.end method

.method static hashCode(I)I
    .locals 0

    return p0
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .line 23
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    return v0
.end method

.method public final getValue()I
    .locals 1

    .line 27
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 34
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->hash:I

    if-nez v0, :cond_0

    .line 35
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    iput v0, p0, Lgnu/bytecode/CpoolValue1;->hash:I

    .line 36
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->hash:I

    return v0
.end method

.method public print(Lgnu/bytecode/ClassTypeWriter;I)V
    .locals 4

    .line 47
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    const-string v1, "=0x"

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    if-lez p2, :cond_0

    const-string v0, "Integer "

    .line 50
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 51
    :cond_0
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(I)V

    if-le p2, v2, :cond_3

    .line 52
    iget p2, p0, Lgnu/bytecode/CpoolValue1;->value:I

    if-eqz p2, :cond_3

    .line 54
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 55
    iget p2, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    const-string v0, "Float "

    .line 61
    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 62
    :cond_2
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lgnu/bytecode/ClassTypeWriter;->print(F)V

    if-le p2, v2, :cond_3

    .line 65
    invoke-virtual {p1, v1}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    .line 66
    iget p2, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassTypeWriter;->print(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method write(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->tag:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 42
    iget v0, p0, Lgnu/bytecode/CpoolValue1;->value:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method

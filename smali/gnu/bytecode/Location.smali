.class public Lgnu/bytecode/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field protected name:Ljava/lang/String;

.field name_index:I

.field signature_index:I

.field protected type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    invoke-virtual {v0}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType()Lgnu/bytecode/Type;
    .locals 1

    .line 39
    iget-object v0, p0, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public final setName(ILgnu/bytecode/ConstantPool;)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2, p1, v0}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object p2

    check-cast p2, Lgnu/bytecode/CpoolUtf8;

    .line 32
    iget-object p2, p2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    iput-object p2, p0, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    .line 34
    :goto_0
    iput p1, p0, Lgnu/bytecode/Location;->name_index:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lgnu/bytecode/Location;->name:Ljava/lang/String;

    return-void
.end method

.method public setSignature(ILgnu/bytecode/ConstantPool;)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p2, p1, v0}, Lgnu/bytecode/ConstantPool;->getForced(II)Lgnu/bytecode/CpoolEntry;

    move-result-object p2

    check-cast p2, Lgnu/bytecode/CpoolUtf8;

    .line 53
    iput p1, p0, Lgnu/bytecode/Location;->signature_index:I

    .line 54
    iget-object p1, p2, Lgnu/bytecode/CpoolUtf8;->string:Ljava/lang/String;

    invoke-static {p1}, Lgnu/bytecode/Type;->signatureToType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object p1

    iput-object p1, p0, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    return-void
.end method

.method public final setType(Lgnu/bytecode/Type;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lgnu/bytecode/Location;->type:Lgnu/bytecode/Type;

    return-void
.end method

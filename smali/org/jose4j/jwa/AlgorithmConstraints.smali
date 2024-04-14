.class public Lorg/jose4j/jwa/AlgorithmConstraints;
.super Ljava/lang/Object;
.source "AlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    }
.end annotation


# static fields
.field public static final ALLOW_ONLY_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

.field public static final DISALLOW_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

.field public static final NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;


# instance fields
.field private final algorithms:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    sget-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->NO_CONSTRAINTS:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 33
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    sget-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const-string v2, "none"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->DISALLOW_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

    .line 34
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints;

    sget-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->PERMIT:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwa/AlgorithmConstraints;-><init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints;->ALLOW_ONLY_NONE:Lorg/jose4j/jwa/AlgorithmConstraints;

    return-void
.end method

.method public varargs constructor <init>(Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;[Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lorg/jose4j/jwa/AlgorithmConstraints;->type:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 69
    new-instance p1, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lorg/jose4j/jwa/AlgorithmConstraints;->algorithms:Ljava/util/Set;

    return-void

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ConstraintType cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public checkConstraint(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/InvalidAlgorithmException;
        }
    .end annotation

    .line 74
    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$1;->$SwitchMap$org$jose4j$jwa$AlgorithmConstraints$ConstraintType:[I

    iget-object v1, p0, Lorg/jose4j/jwa/AlgorithmConstraints;->type:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-virtual {v1}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "\'"

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmConstraints;->algorithms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Lorg/jose4j/lang/InvalidAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is a blocked algorithm."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    iget-object v0, p0, Lorg/jose4j/jwa/AlgorithmConstraints;->algorithms:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    return-void

    .line 80
    :cond_3
    new-instance v0, Lorg/jose4j/lang/InvalidAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a permitted algorithm."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jose4j/lang/InvalidAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

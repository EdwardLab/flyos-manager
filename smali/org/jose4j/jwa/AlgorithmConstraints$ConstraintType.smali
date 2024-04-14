.class public final enum Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
.super Ljava/lang/Enum;
.source "AlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwa/AlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConstraintType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

.field public static final enum BLACKLIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

.field public static final enum PERMIT:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

.field public static final enum WHITELIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const-string v1, "WHITELIST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->WHITELIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 45
    new-instance v1, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const-string v3, "BLACKLIST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLACKLIST:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 51
    new-instance v3, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const-string v5, "PERMIT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->PERMIT:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    .line 57
    new-instance v5, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const-string v7, "BLOCK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->BLOCK:Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 36
    sput-object v7, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->$VALUES:[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    .locals 1

    .line 36
    const-class v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    return-object p0
.end method

.method public static values()[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;
    .locals 1

    .line 36
    sget-object v0, Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->$VALUES:[Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    invoke-virtual {v0}, [Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jose4j/jwa/AlgorithmConstraints$ConstraintType;

    return-object v0
.end method

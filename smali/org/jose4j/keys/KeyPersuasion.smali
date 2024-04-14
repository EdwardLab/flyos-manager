.class public final enum Lorg/jose4j/keys/KeyPersuasion;
.super Ljava/lang/Enum;
.source "KeyPersuasion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jose4j/keys/KeyPersuasion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jose4j/keys/KeyPersuasion;

.field public static final enum ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

.field public static final enum NONE:Lorg/jose4j/keys/KeyPersuasion;

.field public static final enum SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 23
    new-instance v0, Lorg/jose4j/keys/KeyPersuasion;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jose4j/keys/KeyPersuasion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jose4j/keys/KeyPersuasion;->NONE:Lorg/jose4j/keys/KeyPersuasion;

    new-instance v1, Lorg/jose4j/keys/KeyPersuasion;

    const-string v3, "SYMMETRIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jose4j/keys/KeyPersuasion;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jose4j/keys/KeyPersuasion;->SYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    new-instance v3, Lorg/jose4j/keys/KeyPersuasion;

    const-string v5, "ASYMMETRIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jose4j/keys/KeyPersuasion;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jose4j/keys/KeyPersuasion;->ASYMMETRIC:Lorg/jose4j/keys/KeyPersuasion;

    const/4 v5, 0x3

    new-array v5, v5, [Lorg/jose4j/keys/KeyPersuasion;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 21
    sput-object v5, Lorg/jose4j/keys/KeyPersuasion;->$VALUES:[Lorg/jose4j/keys/KeyPersuasion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jose4j/keys/KeyPersuasion;
    .locals 1

    .line 21
    const-class v0, Lorg/jose4j/keys/KeyPersuasion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jose4j/keys/KeyPersuasion;

    return-object p0
.end method

.method public static values()[Lorg/jose4j/keys/KeyPersuasion;
    .locals 1

    .line 21
    sget-object v0, Lorg/jose4j/keys/KeyPersuasion;->$VALUES:[Lorg/jose4j/keys/KeyPersuasion;

    invoke-virtual {v0}, [Lorg/jose4j/keys/KeyPersuasion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jose4j/keys/KeyPersuasion;

    return-object v0
.end method

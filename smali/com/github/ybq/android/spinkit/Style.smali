.class public final enum Lcom/github/ybq/android/spinkit/Style;
.super Ljava/lang/Enum;
.source "Style.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/ybq/android/spinkit/Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum PULSE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

.field public static final enum WAVE:Lcom/github/ybq/android/spinkit/Style;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 8
    new-instance v0, Lcom/github/ybq/android/spinkit/Style;

    const-string v1, "ROTATING_PLANE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/ybq/android/spinkit/Style;->ROTATING_PLANE:Lcom/github/ybq/android/spinkit/Style;

    .line 9
    new-instance v1, Lcom/github/ybq/android/spinkit/Style;

    const-string v3, "DOUBLE_BOUNCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/github/ybq/android/spinkit/Style;->DOUBLE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    .line 10
    new-instance v3, Lcom/github/ybq/android/spinkit/Style;

    const-string v5, "WAVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/github/ybq/android/spinkit/Style;->WAVE:Lcom/github/ybq/android/spinkit/Style;

    .line 11
    new-instance v5, Lcom/github/ybq/android/spinkit/Style;

    const-string v7, "WANDERING_CUBES"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/github/ybq/android/spinkit/Style;->WANDERING_CUBES:Lcom/github/ybq/android/spinkit/Style;

    .line 12
    new-instance v7, Lcom/github/ybq/android/spinkit/Style;

    const-string v9, "PULSE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/github/ybq/android/spinkit/Style;->PULSE:Lcom/github/ybq/android/spinkit/Style;

    .line 13
    new-instance v9, Lcom/github/ybq/android/spinkit/Style;

    const-string v11, "CHASING_DOTS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/github/ybq/android/spinkit/Style;->CHASING_DOTS:Lcom/github/ybq/android/spinkit/Style;

    .line 14
    new-instance v11, Lcom/github/ybq/android/spinkit/Style;

    const-string v13, "THREE_BOUNCE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/github/ybq/android/spinkit/Style;->THREE_BOUNCE:Lcom/github/ybq/android/spinkit/Style;

    .line 15
    new-instance v13, Lcom/github/ybq/android/spinkit/Style;

    const-string v15, "CIRCLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/github/ybq/android/spinkit/Style;->CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 16
    new-instance v15, Lcom/github/ybq/android/spinkit/Style;

    const-string v14, "CUBE_GRID"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/github/ybq/android/spinkit/Style;->CUBE_GRID:Lcom/github/ybq/android/spinkit/Style;

    .line 17
    new-instance v14, Lcom/github/ybq/android/spinkit/Style;

    const-string v12, "FADING_CIRCLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/github/ybq/android/spinkit/Style;->FADING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 18
    new-instance v12, Lcom/github/ybq/android/spinkit/Style;

    const-string v10, "FOLDING_CUBE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/github/ybq/android/spinkit/Style;->FOLDING_CUBE:Lcom/github/ybq/android/spinkit/Style;

    .line 19
    new-instance v10, Lcom/github/ybq/android/spinkit/Style;

    const-string v8, "ROTATING_CIRCLE"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/github/ybq/android/spinkit/Style;->ROTATING_CIRCLE:Lcom/github/ybq/android/spinkit/Style;

    .line 20
    new-instance v8, Lcom/github/ybq/android/spinkit/Style;

    const-string v6, "MULTIPLE_PULSE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE:Lcom/github/ybq/android/spinkit/Style;

    .line 21
    new-instance v6, Lcom/github/ybq/android/spinkit/Style;

    const-string v4, "PULSE_RING"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/github/ybq/android/spinkit/Style;->PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    .line 22
    new-instance v4, Lcom/github/ybq/android/spinkit/Style;

    const-string v2, "MULTIPLE_PULSE_RING"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lcom/github/ybq/android/spinkit/Style;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/github/ybq/android/spinkit/Style;->MULTIPLE_PULSE_RING:Lcom/github/ybq/android/spinkit/Style;

    const/16 v2, 0xf

    new-array v2, v2, [Lcom/github/ybq/android/spinkit/Style;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    aput-object v4, v2, v6

    .line 6
    sput-object v2, Lcom/github/ybq/android/spinkit/Style;->$VALUES:[Lcom/github/ybq/android/spinkit/Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/github/ybq/android/spinkit/Style;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/ybq/android/spinkit/Style;
    .locals 1

    .line 6
    const-class v0, Lcom/github/ybq/android/spinkit/Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/ybq/android/spinkit/Style;

    return-object p0
.end method

.method public static values()[Lcom/github/ybq/android/spinkit/Style;
    .locals 1

    .line 6
    sget-object v0, Lcom/github/ybq/android/spinkit/Style;->$VALUES:[Lcom/github/ybq/android/spinkit/Style;

    invoke-virtual {v0}, [Lcom/github/ybq/android/spinkit/Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/ybq/android/spinkit/Style;

    return-object v0
.end method

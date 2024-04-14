.class public final enum Lcom/onesignal/influence/model/OSInfluenceChannel;
.super Ljava/lang/Enum;
.source "OSInfluenceChannel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/influence/model/OSInfluenceChannel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/influence/model/OSInfluenceChannel;

.field public static final enum IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

.field public static final enum NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/onesignal/influence/model/OSInfluenceChannel;

    const-string v1, "IAM"

    const/4 v2, 0x0

    const-string v3, "iam"

    invoke-direct {v0, v1, v2, v3}, Lcom/onesignal/influence/model/OSInfluenceChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/onesignal/influence/model/OSInfluenceChannel;->IAM:Lcom/onesignal/influence/model/OSInfluenceChannel;

    .line 7
    new-instance v1, Lcom/onesignal/influence/model/OSInfluenceChannel;

    const-string v3, "NOTIFICATION"

    const/4 v4, 0x1

    const-string v5, "notification"

    invoke-direct {v1, v3, v4, v5}, Lcom/onesignal/influence/model/OSInfluenceChannel;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/onesignal/influence/model/OSInfluenceChannel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 5
    sput-object v3, Lcom/onesignal/influence/model/OSInfluenceChannel;->$VALUES:[Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/onesignal/influence/model/OSInfluenceChannel;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceChannel;
    .locals 5

    if-eqz p0, :cond_3

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluenceChannel;->values()[Lcom/onesignal/influence/model/OSInfluenceChannel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 30
    invoke-virtual {v3, p0}, Lcom/onesignal/influence/model/OSInfluenceChannel;->equalsName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_2
    sget-object p0, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object p0

    .line 27
    :cond_3
    :goto_1
    sget-object p0, Lcom/onesignal/influence/model/OSInfluenceChannel;->NOTIFICATION:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceChannel;
    .locals 1

    .line 5
    const-class v0, Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/influence/model/OSInfluenceChannel;
    .locals 1

    .line 5
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceChannel;->$VALUES:[Lcom/onesignal/influence/model/OSInfluenceChannel;

    invoke-virtual {v0}, [Lcom/onesignal/influence/model/OSInfluenceChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/onesignal/influence/model/OSInfluenceChannel;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/onesignal/influence/model/OSInfluenceChannel;->name:Ljava/lang/String;

    return-object v0
.end method

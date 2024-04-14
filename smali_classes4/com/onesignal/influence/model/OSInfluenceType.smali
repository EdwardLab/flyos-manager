.class public final enum Lcom/onesignal/influence/model/OSInfluenceType;
.super Ljava/lang/Enum;
.source "OSInfluenceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/onesignal/influence/model/OSInfluenceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/onesignal/influence/model/OSInfluenceType;

.field public static final enum DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

.field public static final enum DISABLED:Lcom/onesignal/influence/model/OSInfluenceType;

.field public static final enum INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

.field public static final enum UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lcom/onesignal/influence/model/OSInfluenceType;

    const-string v1, "DIRECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/onesignal/influence/model/OSInfluenceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 7
    new-instance v1, Lcom/onesignal/influence/model/OSInfluenceType;

    const-string v3, "INDIRECT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/onesignal/influence/model/OSInfluenceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 8
    new-instance v3, Lcom/onesignal/influence/model/OSInfluenceType;

    const-string v5, "UNATTRIBUTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/onesignal/influence/model/OSInfluenceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    .line 9
    new-instance v5, Lcom/onesignal/influence/model/OSInfluenceType;

    const-string v7, "DISABLED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/onesignal/influence/model/OSInfluenceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/onesignal/influence/model/OSInfluenceType;->DISABLED:Lcom/onesignal/influence/model/OSInfluenceType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/onesignal/influence/model/OSInfluenceType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/onesignal/influence/model/OSInfluenceType;->$VALUES:[Lcom/onesignal/influence/model/OSInfluenceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;
    .locals 5

    if-eqz p0, :cond_3

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 37
    :cond_0
    invoke-static {}, Lcom/onesignal/influence/model/OSInfluenceType;->values()[Lcom/onesignal/influence/model/OSInfluenceType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 38
    invoke-virtual {v3}, Lcom/onesignal/influence/model/OSInfluenceType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_2
    sget-object p0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object p0

    .line 35
    :cond_3
    :goto_1
    sget-object p0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/onesignal/influence/model/OSInfluenceType;
    .locals 1

    .line 5
    const-class v0, Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/onesignal/influence/model/OSInfluenceType;

    return-object p0
.end method

.method public static values()[Lcom/onesignal/influence/model/OSInfluenceType;
    .locals 1

    .line 5
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->$VALUES:[Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {v0}, [Lcom/onesignal/influence/model/OSInfluenceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/onesignal/influence/model/OSInfluenceType;

    return-object v0
.end method


# virtual methods
.method public isAttributed()Z
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/onesignal/influence/model/OSInfluenceType;->isDirect()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/onesignal/influence/model/OSInfluenceType;->isIndirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDirect()Z
    .locals 1

    .line 13
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->DIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/model/OSInfluenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 29
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->DISABLED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/model/OSInfluenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isIndirect()Z
    .locals 1

    .line 17
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->INDIRECT:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/model/OSInfluenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnattributed()Z
    .locals 1

    .line 25
    sget-object v0, Lcom/onesignal/influence/model/OSInfluenceType;->UNATTRIBUTED:Lcom/onesignal/influence/model/OSInfluenceType;

    invoke-virtual {p0, v0}, Lcom/onesignal/influence/model/OSInfluenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

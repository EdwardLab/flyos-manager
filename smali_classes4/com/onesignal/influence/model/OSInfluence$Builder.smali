.class public Lcom/onesignal/influence/model/OSInfluence$Builder;
.super Ljava/lang/Object;
.source "OSInfluence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/influence/model/OSInfluence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ids:Lorg/json/JSONArray;

.field private influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

.field private influenceType:Lcom/onesignal/influence/model/OSInfluenceType;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/onesignal/influence/model/OSInfluence$Builder;)Lorg/json/JSONArray;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/onesignal/influence/model/OSInfluence$Builder;->ids:Lorg/json/JSONArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/onesignal/influence/model/OSInfluence$Builder;)Lcom/onesignal/influence/model/OSInfluenceType;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/onesignal/influence/model/OSInfluence$Builder;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/onesignal/influence/model/OSInfluence$Builder;)Lcom/onesignal/influence/model/OSInfluenceChannel;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/onesignal/influence/model/OSInfluence$Builder;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object p0
.end method

.method public static newInstance()Lcom/onesignal/influence/model/OSInfluence$Builder;
    .locals 1

    .line 73
    new-instance v0, Lcom/onesignal/influence/model/OSInfluence$Builder;

    invoke-direct {v0}, Lcom/onesignal/influence/model/OSInfluence$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/onesignal/influence/model/OSInfluence;
    .locals 1

    .line 95
    new-instance v0, Lcom/onesignal/influence/model/OSInfluence;

    invoke-direct {v0, p0}, Lcom/onesignal/influence/model/OSInfluence;-><init>(Lcom/onesignal/influence/model/OSInfluence$Builder;)V

    return-object v0
.end method

.method public setIds(Lorg/json/JSONArray;)Lcom/onesignal/influence/model/OSInfluence$Builder;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/onesignal/influence/model/OSInfluence$Builder;->ids:Lorg/json/JSONArray;

    return-object p0
.end method

.method public setInfluenceChannel(Lcom/onesignal/influence/model/OSInfluenceChannel;)Lcom/onesignal/influence/model/OSInfluence$Builder;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/onesignal/influence/model/OSInfluence$Builder;->influenceChannel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object p0
.end method

.method public setInfluenceType(Lcom/onesignal/influence/model/OSInfluenceType;)Lcom/onesignal/influence/model/OSInfluence$Builder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/onesignal/influence/model/OSInfluence$Builder;->influenceType:Lcom/onesignal/influence/model/OSInfluenceType;

    return-object p0
.end method

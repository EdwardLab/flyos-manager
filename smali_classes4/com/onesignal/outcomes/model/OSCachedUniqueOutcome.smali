.class public Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;
.super Ljava/lang/Object;
.source "OSCachedUniqueOutcome.java"


# instance fields
.field private channel:Lcom/onesignal/influence/model/OSInfluenceChannel;

.field private influenceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/influence/model/OSInfluenceChannel;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->influenceId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->channel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/onesignal/influence/model/OSInfluenceChannel;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->channel:Lcom/onesignal/influence/model/OSInfluenceChannel;

    return-object v0
.end method

.method public getInfluenceId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/onesignal/outcomes/model/OSCachedUniqueOutcome;->influenceId:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/onesignal/ADMMessageHandler$Receiver;
.super Lcom/amazon/device/messaging/ADMMessageReceiver;
.source "ADMMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/ADMMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    const-class v0, Lcom/onesignal/ADMMessageHandler;

    invoke-direct {p0, v0}, Lcom/amazon/device/messaging/ADMMessageReceiver;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.class public interface abstract Lcom/microsoft/appcenter/analytics/AuthenticationProvider$TokenProvider;
.super Ljava/lang/Object;
.source "AuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TokenProvider"
.end annotation


# virtual methods
.method public abstract acquireToken(Ljava/lang/String;Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ticketKey",
            "callback"
        }
    .end annotation
.end method

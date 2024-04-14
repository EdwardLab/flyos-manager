.class public interface abstract Lcom/microsoft/appcenter/analytics/AuthenticationProvider$AuthenticationCallback;
.super Ljava/lang/Object;
.source "AuthenticationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/appcenter/analytics/AuthenticationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AuthenticationCallback"
.end annotation


# virtual methods
.method public abstract onAuthenticationResult(Ljava/lang/String;Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenValue",
            "expiryDate"
        }
    .end annotation
.end method

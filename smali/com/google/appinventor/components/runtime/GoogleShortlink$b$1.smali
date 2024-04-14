.class final Lcom/google/appinventor/components/runtime/GoogleShortlink$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/GoogleShortlink$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink$b;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleShortlink$b;Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink$b;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b$1;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink$b;

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleShortlink;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/GoogleShortlink$b$1;->eaS298peKlTpqlGRGLMTdk3sY259qoFGMqAzTE98DZy2JVNgCwB414XzHrUPTC:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/GoogleShortlink;->GotResponse(ZLjava/lang/String;)V

    return-void
.end method

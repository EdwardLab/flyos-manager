.class final Lcom/google/appinventor/components/runtime/Form$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V
    .locals 0

    .line 2267
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iput p3, p0, Lcom/google/appinventor/components/runtime/Form$20;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2270
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "(Form)Width not stable yet... trying again"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2271
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Form;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$20;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/AndroidViewComponent;

    iget v2, p0, Lcom/google/appinventor/components/runtime/Form$20;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:I

    invoke-virtual {v0, v1, v2}, Lcom/google/appinventor/components/runtime/Form;->setChildWidth(Lcom/google/appinventor/components/runtime/AndroidViewComponent;I)V

    return-void
.end method

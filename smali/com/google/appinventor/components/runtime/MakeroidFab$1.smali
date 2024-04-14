.class final Lcom/google/appinventor/components/runtime/MakeroidFab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/MakeroidFab;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFab;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidFab;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFab$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFab;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFab;)Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidFab$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidFab;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/MakeroidFab;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFab;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->setFloatingActionButton(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

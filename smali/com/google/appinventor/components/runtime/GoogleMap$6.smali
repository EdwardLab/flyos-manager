.class final Lcom/google/appinventor/components/runtime/GoogleMap$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/GoogleMap;->EnableMyLocation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Z

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/GoogleMap;Z)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/GoogleMap$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;

    iput-boolean p2, p0, Lcom/google/appinventor/components/runtime/GoogleMap$6;->AGGRF5jTQInc5pUFaFXws4RnGLG0yIcZMIkVuaCJtvs6ytQWDb3uUe5MrjxIRxbt:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 706
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/GoogleMap$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/GoogleMap;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/GoogleMap;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/GoogleMap;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/GoogleMap$6$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/GoogleMap$6$1;-><init>(Lcom/google/appinventor/components/runtime/GoogleMap$6;)V

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

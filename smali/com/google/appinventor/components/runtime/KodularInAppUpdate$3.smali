.class final Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnSuccessListener<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 184
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 1188
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1193
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/appinventor/components/runtime/ComponentContainer;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T()I

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;ILandroid/app/Activity;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1195
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "InApp Update"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1197
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->installStatus()I

    move-result p1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 1202
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$3;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->completeUpdate()Lcom/google/android/play/core/tasks/Task;

    :cond_1
    return-void
.end method

.class final Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/KodularInAppUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 2

    .line 82
    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    .line 1085
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1086
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 1087
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateFailed()V

    return-void

    .line 1088
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 1089
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 1090
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateCanceled()V

    return-void

    .line 1091
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 1092
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateDownloaded()V

    return-void

    .line 1093
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1094
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateDownloading()V

    return-void

    .line 1095
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 1096
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateInstalling()V

    return-void

    .line 1097
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/play/core/install/InstallState;->installStatus()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 1098
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object p1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/KodularInAppUpdate;)Lcom/google/android/play/core/install/InstallStateUpdatedListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->unregisterListener(Lcom/google/android/play/core/install/InstallStateUpdatedListener;)V

    .line 1099
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularInAppUpdate$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularInAppUpdate;

    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/KodularInAppUpdate;->UpdateInstalled()V

    :cond_5
    return-void
.end method

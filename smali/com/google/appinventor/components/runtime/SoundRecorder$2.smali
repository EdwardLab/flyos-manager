.class final Lcom/google/appinventor/components/runtime/SoundRecorder$2;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/SoundRecorder;->Start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/SoundRecorder;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onGranted()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/SoundRecorder;)Z

    .line 211
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/SoundRecorder$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/SoundRecorder;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/SoundRecorder;->Start()V

    return-void
.end method

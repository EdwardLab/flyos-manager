.class final Lcom/google/appinventor/components/runtime/Web$6;
.super Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Web;->performRequest(Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Web;

.field private synthetic IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

.field final synthetic VvFTOLnqaqrLXMx0zKqF43x48MmWU03SPyCU3oICh58q13eOXSko8RmM2WMpOJvu:Ljava/lang/String;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

.field final synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[B

.field final synthetic tZ3MHVIBuNU67lxFNgCfPbYt4voTRUFM1SdsgXyVm2022j7Uxoq2n9N4FRCZY6Ar:Ljava/lang/String;

.field final synthetic uH6uduDO6igztP3NRwiG3B3RKi1dfrI0ueZUUY55UetixycZYkIQUqODMskIlYYu:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Lcom/google/appinventor/components/runtime/Web;Lcom/google/appinventor/components/runtime/Web$CapturedProperties;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 891
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Web$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web;

    iput-object p5, p0, Lcom/google/appinventor/components/runtime/Web$6;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

    iput-object p6, p0, Lcom/google/appinventor/components/runtime/Web$6;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Web;

    iput-object p7, p0, Lcom/google/appinventor/components/runtime/Web$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/Web$CapturedProperties;

    iput-object p8, p0, Lcom/google/appinventor/components/runtime/Web$6;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:[B

    iput-object p9, p0, Lcom/google/appinventor/components/runtime/Web$6;->VvFTOLnqaqrLXMx0zKqF43x48MmWU03SPyCU3oICh58q13eOXSko8RmM2WMpOJvu:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/appinventor/components/runtime/Web$6;->uH6uduDO6igztP3NRwiG3B3RKi1dfrI0ueZUUY55UetixycZYkIQUqODMskIlYYu:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/appinventor/components/runtime/Web$6;->tZ3MHVIBuNU67lxFNgCfPbYt4voTRUFM1SdsgXyVm2022j7Uxoq2n9N4FRCZY6Ar:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;-><init>(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onGranted()V
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Web;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->access$902(Lcom/google/appinventor/components/runtime/Web;Z)Z

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/util/List;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Web$6;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Web;

    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Web;->access$1002(Lcom/google/appinventor/components/runtime/Web;Z)Z

    .line 902
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Web$6$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Web$6$1;-><init>(Lcom/google/appinventor/components/runtime/Web$6;)V

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    return-void
.end method

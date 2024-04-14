.class final Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/firebase/storage/FileDownloadTask$TaskSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

.field private synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1129
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;->XBLVE91Zp5kvRRn2aG2d0scvywAN7zOQf8gZkaueK9XPU163NLSIe4vWoTpXMo6u:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage$5;->wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/KodularFirebaseStorage;->DownloadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

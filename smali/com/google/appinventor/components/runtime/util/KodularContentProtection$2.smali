.class final Lcom/google/appinventor/components/runtime/util/KodularContentProtection$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->showWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/util/KodularContentProtection$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/KodularContentProtection;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KodularContentProtection;->access$600(Lcom/google/appinventor/components/runtime/util/KodularContentProtection;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

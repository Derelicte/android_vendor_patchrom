.class Lcom/android/systemui/settings/ToggleManager$11;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/settings/ToggleManager;->togglePrivacyMode()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/ToggleManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleManager$11;->this$0:Lcom/android/systemui/settings/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1375
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1376
    return-void
.end method

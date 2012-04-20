.class Lcom/android/updater/EmergencyUpdateActivity$2;
.super Ljava/lang/Object;
.source "EmergencyUpdateActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/updater/EmergencyUpdateActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/updater/EmergencyUpdateActivity;


# direct methods
.method constructor <init>(Lcom/android/updater/EmergencyUpdateActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/updater/EmergencyUpdateActivity$2;->this$0:Lcom/android/updater/EmergencyUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/updater/EmergencyUpdateActivity$2;->this$0:Lcom/android/updater/EmergencyUpdateActivity;

    invoke-virtual {v0}, Lcom/android/updater/EmergencyUpdateActivity;->finish()V

    .line 73
    return-void
.end method

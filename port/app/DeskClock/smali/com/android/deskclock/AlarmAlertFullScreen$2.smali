.class Lcom/android/deskclock/AlarmAlertFullScreen$2;
.super Ljava/lang/Object;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmAlertFullScreen;->showTimerDialog(Lcom/android/deskclock/Alarm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmAlertFullScreen;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen$2;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen$2;->this$0:Lcom/android/deskclock/AlarmAlertFullScreen;

    #calls: Lcom/android/deskclock/AlarmAlertFullScreen;->dismissTimer()V
    invoke-static {v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->access$300(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    .line 272
    return-void
.end method

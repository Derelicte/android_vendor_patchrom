.class Lcom/android/soundrecorder/SoundRecorder$7;
.super Ljava/lang/Object;
.source "SoundRecorder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/soundrecorder/SoundRecorder;->showOverwriteConfirmDialogIfConflicts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/soundrecorder/SoundRecorder;


# direct methods
.method constructor <init>(Lcom/android/soundrecorder/SoundRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/soundrecorder/SoundRecorder$7;->this$0:Lcom/android/soundrecorder/SoundRecorder;

    #calls: Lcom/android/soundrecorder/SoundRecorder;->startRecording()V
    invoke-static {v0}, Lcom/android/soundrecorder/SoundRecorder;->access$700(Lcom/android/soundrecorder/SoundRecorder;)V

    .line 767
    return-void
.end method

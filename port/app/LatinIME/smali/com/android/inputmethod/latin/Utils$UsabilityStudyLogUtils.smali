.class public Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsabilityStudyLogUtils"
.end annotation


# static fields
.field private static final USABILITY_TAG:Ljava/lang/String;

.field private static final sInstance:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDirectory:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field private final mLoggingHandler:Landroid/os/Handler;

.field private mWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 426
    const-class v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    .line 428
    new-instance v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->sInstance:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDate:Ljava/util/Date;

    .line 440
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd MMM HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 442
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsabilityStudyLogUtils logging task"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 444
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 445
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mLoggingHandler:Landroid/os/Handler;

    .line 446
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 425
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->createLogFileIfNotExist()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/text/SimpleDateFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 425
    sget-object v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;)Ljava/io/PrintWriter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method private createLogFileIfNotExist()V
    .locals 4

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mDirectory:Ljava/io/File;

    const-string v2, "log.txt"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getPrintWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/PrintWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_1
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->USABILITY_TAG:Ljava/lang/String;

    const-string v2, "Can\'t create log file."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;
    .locals 1

    .prologue
    .line 449
    sget-object v0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->sInstance:Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    return-object v0
.end method

.method private getPrintWriter(Ljava/io/File;Ljava/lang/String;Z)Ljava/io/PrintWriter;
    .locals 3
    .parameter "dir"
    .parameter "filename"
    .parameter "renew"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    .line 564
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    if-eqz p3, :cond_0

    .line 566
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 569
    :cond_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method


# virtual methods
.method public write(Ljava/lang/String;)V
    .locals 2
    .parameter "log"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->mLoggingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils$1;-><init>(Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 505
    return-void
.end method

.method public writeChar(CII)V
    .locals 4
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 473
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, inputChar:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 485
    :goto_0
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Utils$UsabilityStudyLogUtils;->write(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->onPrintAllUsabilityStudyLogs()V

    .line 487
    return-void

    .line 476
    :sswitch_0
    const-string v0, "<enter>"

    .line 477
    goto :goto_0

    .line 479
    :sswitch_1
    const-string v0, "<tab>"

    .line 480
    goto :goto_0

    .line 482
    :sswitch_2
    const-string v0, "<space>"

    goto :goto_0

    .line 474
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

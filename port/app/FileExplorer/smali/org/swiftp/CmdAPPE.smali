.class public Lorg/swiftp/CmdAPPE;
.super Lorg/swiftp/CmdAbstractStore;
.source "CmdAPPE.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected input:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 27
    const-class v0, Lorg/swiftp/CmdAPPE;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/swiftp/CmdAbstractStore;-><init>(Lorg/swiftp/SessionThread;Ljava/lang/String;)V

    .line 28
    iput-object p2, p0, Lorg/swiftp/CmdAPPE;->input:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/swiftp/CmdAPPE;->input:Ljava/lang/String;

    invoke-static {v0}, Lorg/swiftp/CmdAPPE;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/swiftp/CmdAPPE;->doStorOrAppe(Ljava/lang/String;Z)V

    .line 33
    return-void
.end method

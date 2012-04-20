.class public Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;
.super Ljava/lang/Object;
.source "VoiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/deprecated/VoiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceInputWrapper"
.end annotation


# static fields
.field private static final sInputWrapperInstance:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 827
    new-instance v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    invoke-direct {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;-><init>()V

    sput-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->sInputWrapperInstance:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 843
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 847
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 854
    return-void
.end method

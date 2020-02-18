import NerNet
import pytest


def test_main_test():
    assert NerNet.sess.run(accuracy, feed_dict={X: mnist.test.images[:256], Y: mnist.test.labels[:256], keep_prob: 1.0}) > 0
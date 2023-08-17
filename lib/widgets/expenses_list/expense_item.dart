import 'package:expense_tracker/models/expenses.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(expense.title),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Text(
                      '\$${expense.amount.toStringAsFixed(2)}'), // 12.3344 => 12.34
                  const Spacer(), //It takes all the remaining space
                  Row(
                    children: [ 
                      Icon(categoryIcon[expense.category]),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(expense.formattedDate),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
